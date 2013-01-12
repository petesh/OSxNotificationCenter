//
//  NsUserNotificationsBridge.h
//  NsUserNotificationsBridge
//
//  Created by Pete Shanahan on 11/01/2013.
//  Copyright (c) 2013 Pete Shanahan.
//

#import <Foundation/Foundation.h>


@interface NsUserNotificationsBridge : NSObject

+ (BOOL) sendNotification:(NSString *)notificationTitle
     notificationSubtitle:(NSString *)notificationSubtitle
      notificationMessage:(NSString *)notificationMessage
   notificationTimeOffset:(NSTimeInterval)notificationTimeOffset;

@end
