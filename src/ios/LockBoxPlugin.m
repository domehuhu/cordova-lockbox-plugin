//
//  LockBoxPlugin.m
//
//  Created by Phongsiri Srichuwong on 5/7/2557 BE.
//
//

#import "LockboxPlugin.h"
#import "Lockbox.h"

@implementation LockBoxPlugin

- (id) init {
    self = [super self];
    if (self) {}
    return self;
}

- (void) setString:(CDVInvokedUrlCommand *) command {
    NSString* key = [command.arguments objectAtIndex:0];
    NSString* value = [command.arguments objectAtIndex:1];
    CDVPluginResult* result = nil;
    
    if (!key || [key length] == 0) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                                   messageAsString:@"Key couldn't be empty"];
    }
    else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }
    
    [Lockbox setString:value forKey:key];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void) stringForKey:(CDVInvokedUrlCommand *) command {
    NSString* key = [command.arguments objectAtIndex:0];
    NSString* value = [Lockbox stringForKey:key];
    
    CDVPluginResult* result = nil;
    if (!key || [key length] == 0) {
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                                       messageAsString:@"Key couldn't be empty"];
    }
    else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                          messageAsString:value];
        
    }
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}


+ (NSString *) cordovaVersion {
    return CDV_VERSION;
}
@end
