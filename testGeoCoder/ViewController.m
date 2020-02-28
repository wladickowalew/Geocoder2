//
//  ViewController.m
//  testGeoCoder
//
//  Created by Student on 14.02.2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import "ViewController.h"
#import "TransportLayer.h"
#import "GeoObject.h"
#import "GeoObjectCell.h"
#import "GeoObjectVC.h"


@interface ViewController (){
NSMutableArray *data;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _seachtf.delegate = self;
    _table.delegate = self;
    _table.dataSource = self;
    data = [NSMutableArray new];
    //NSDate *data = [TransportLayer getQuery];
   // NSLog(@"%@",data);
   // [self showResponse];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
     NSLog(@"return Tappend");
    [self.view endEditing:YES];
    [self showResponse:[textField text]];
    [_table reloadData];
    return true;
}


-(void) showResponse:(NSString *) name
{
    NSArray *geoObjects = [TransportLayer getObjectList:name];
    data=[NSMutableArray new];
    for (NSDictionary *obj in geoObjects)
    {
        GeoObject *g = [[GeoObject alloc] initWithDictionary:obj];
        [data addObject:g];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GeoObjectCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    [cell cellUpdateWithGoeObject: data[indexPath.row]];
    [cell setTag:indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"ToMap"])
    {
        GeoObjectVC *vc = [segue destinationViewController];
        GeoObjectCell *cell = (GeoObjectCell *) sender;
        [vc setGeoObject:data[[cell tag]]];
    }
}

@end

