//
//  PRNUtils.h
//  FileLogger
//
//  Created by Mac on 29/03/16.
//  Copyright © 2016 fsystem. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PRNUtils : NSObject

+ (NSString*)getContentsDocumentsDirectory;
+ (NSURL*)documentsDirectoryURL;
+ (NSString*)documentsDirectoryPath;

+ (BOOL)isFileExistAtPath:(NSString*)filePath;
+ (void) deleteAllUserFiles;

@end
