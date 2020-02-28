//
//  TransportLayer.h
//  testGeoCoder
//
//  Created by Student on 14.02.2020.
//  Copyright © 2020 Student. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransportLayer : NSObject
+(NSDate *) getQuery:(NSString *) name;
+(NSDictionary *) getData:(NSString *) name;
+(NSArray *) getObjectList:(NSString *) name;
@end

NS_ASSUME_NONNULL_END
