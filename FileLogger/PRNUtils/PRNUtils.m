//
//  PRNUtils.m
//  FileLogger
//
//  Created by Mac on 29/03/16.
//  Copyright © 2016 fsystem. All rights reserved.
//

#import "PRNUtils.h"

@implementation PRNUtils


#pragma mark - Document Directory

+(NSString*)getContentsDocumentsDirectory{
    
    NSURL *documentsURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    
    NSArray *contents = [[NSFileManager defaultManager]contentsOfDirectoryAtURL:documentsURL includingPropertiesForKeys:nil options:NSDirectoryEnumerationSkipsHiddenFiles error:nil];
    
    NSLog(@"%@", [contents description]);
    return [contents description];
    
}

+ (NSURL*)documentsDirectoryURL{
    
    NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    return documentsDirectoryURL;
}

+ (NSString*)documentsDirectoryPath{
    
    NSArray  *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}


+ (void)deleteAllUserFiles{
    
    NSFileManager * fileMgr = [NSFileManager defaultManager];
    
    id directories = @[[self documentsDirectoryPath],[self documentsDirectoryURL]];
    
    for (id dir in directories){
        
        NSArray *fileArray = [fileMgr contentsOfDirectoryAtPath:dir error:nil];
        for (NSString *filename in fileArray) {
            [fileMgr removeItemAtPath:[dir stringByAppendingString:filename] error:NULL];
        }
        
    }
    
}

+ (BOOL)isFileExistAtPath:(NSString*)filePath{
    
    BOOL isFileExist = [[NSFileManager defaultManager]fileExistsAtPath:filePath];
    return isFileExist;
}

@end
