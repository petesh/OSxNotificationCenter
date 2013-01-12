//
//  NsUserNotificationsBridge.m
//  NsUserNotificationsBridge
//
//  Created by Pete Shanahan on 11/01/2013.
//  Copyright (c) 2013 Pete Shanahan.
//

#import "NsUserNotificationsBridge.h"

@implementation NsUserNotificationsBridge

+ (BOOL) sendNotification:(NSString *)notificationTitle
     notificationSubtitle:(NSString *)notificationSubtitle
      notificationMessage:(NSString *)notificationMessage
notificationTimeOffset:(NSTimeInterval)notificationTimeOffset

{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = [notificationTitle retain];
    if (notificationSubtitle.length > 0)
        notification.subtitle = [notificationSubtitle retain];
    notification.informativeText = [notificationMessage retain];
    notification.soundName = NSUserNotificationDefaultSoundName;
    notification.deliveryDate = [[NSDate date] dateByAddingTimeInterval:notificationTimeOffset];
    NSUserNotificationCenter *ns = [NSUserNotificationCenter defaultUserNotificationCenter];
    if (ns != nil)
        [ns scheduleNotification:notification];
    [notification release];
    return (ns != nil);
}

@end
