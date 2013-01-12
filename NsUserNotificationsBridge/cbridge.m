//
//  cbridge.c
//  NsUserNotificationsBridge
//
//  Created by Pete Shanahan on 11/01/2013.
//  Copyright (c) 2013 Pete Shanahan.
//

#import "cbridge.h"
#import "NsUserNotificationsBridge.h"

int
sendNotification(char *title, char *subtitle, char *message, time_t timeoffset)
{
    NSString *titleString = [NSString stringWithCString:title encoding:NSUTF8StringEncoding];
    NSString *subtitleString = [NSString stringWithCString:subtitle encoding:NSUTF8StringEncoding];
    NSString *messageString = [NSString stringWithCString:message encoding:NSUTF8StringEncoding];
    int ret = [NsUserNotificationsBridge sendNotification:titleString
                                     notificationSubtitle:subtitleString
                                      notificationMessage:messageString
                                   notificationTimeOffset:timeoffset];
    [titleString release];
    [subtitleString release];
    [messageString release];
    return ret;
}

