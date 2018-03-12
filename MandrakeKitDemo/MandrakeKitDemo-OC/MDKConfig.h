//
//  MDKConfig.h
//  MandrakeKitDemo-OC
//
//  Created by Kelvin on 12/03/2018.
//  Copyright © 2018 Beary Innovative. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MDKConfig : NSObject

+ (void)setupTokenType:(NSString *)tokenType token:(NSString *)token domain:(NSString *)domain;
+ (void)enableWaterMarkWith:(NSString *)watermark;

@end
