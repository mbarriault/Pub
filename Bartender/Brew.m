//
//  Brew.m
//  Pub
//
//  Created by Mike Barriault on 2012-08-13.
//  Copyright (c) 2012 Elemist.net. All rights reserved.
//

#import "Brew.h"
#import "ARCExtensions.h"

@implementation Brew

+(NSString*) command:(NSString *)command {
    NSPipe* pipe = [NSPipe pipe];
    NSTask* task = NSTask.task;
    task.launchPath = @"/usr/local/bin/brew";
    task.standardOutput = pipe;
    task.arguments = @[command];
    [task launch];
    [task waitUntilExit];
    [task terminate];
    return [[[NSString alloc] initWithData:pipe.fileHandleForReading.readDataToEndOfFile encoding:NSASCIIStringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(NSArray*) list {
    NSString* listStr = [self command:@"list"];
    return [listStr componentsSeparatedByString:@"\n"];
}

+(void) update {
    [self command:@"update"];
}

@end
