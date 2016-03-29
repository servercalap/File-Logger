# File-Logger
NSFileManager used log


Usage 

AppDelegate.m

    NSString *logFilePath = [LogDataPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.log",[NSDate date]]];
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding], "a+", stderr);
    
    
    
    #optional
    NSError *error;
     NSString *  LogDataPath = [[PRNUtils documentsDirectoryPath]stringByAppendingPathComponent:[NSString             stringWithFormat:@"%@.Logs",@""]];
    
     if (![[NSFileManager defaultManager] fileExistsAtPath:LogDataPath]){
        [[NSFileManager defaultManager] createDirectoryAtPath:LogDataPath withIntermediateDirectories:NO attributes:nil error:&error]
    }


