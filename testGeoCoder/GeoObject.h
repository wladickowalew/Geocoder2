//
//  GeoObject.h
//  testGeoCoder
//
//  Created by Student on 21.02.2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GeoObject : NSObject

@property NSString *name;
@property NSString *descr;
@property float latitude;
@property float longitude;

- (instancetype)initWithDictionary:(NSDictionary *)data;
-(NSString *) GetPos;
@end

NS_ASSUME_NONNULL_END
