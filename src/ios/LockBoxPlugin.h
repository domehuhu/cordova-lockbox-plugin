//
//  LockBoxPlugin.h
//
//  Created by Phongsiri Srichuwong on 5/7/2557 BE.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface LockBoxPlugin : CDVPlugin
{}
+ (NSString *) cordovaVersion;

- (void) setString:(CDVInvokedUrlCommand *) command;
- (void) stringForKey:(CDVInvokedUrlCommand *) command;

@end
