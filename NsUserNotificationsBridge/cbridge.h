//
//  cbridge.h
//  NsUserNotificationsBridge
//
//  Created by Pete Shanahan on 11/01/2013.
//  Copyright (c) 2013 Pete Shanahan
//

#ifndef NsUserNotificationsBridge_cbridge_h
#define NsUserNotificationsBridge_cbridge_h

#ifdef __cplusplus
extern "C" {
#endif

#include <time.h>

int sendNotification(char *title, char *subtitle, char *message, time_t timeoffset);
    
#ifdef __cplusplus
}
#endif

#endif
