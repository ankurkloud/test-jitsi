//
//  ViewController.m
//  Test-Jitsi
//
//  Created by Ankur Agarwal on 18/05/18.
//  Copyright © 2018 KloudData. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    JitsiMeetView *jitsiMeetView = (JitsiMeetView *) self.view;
    NSString *fullName = @"GChat123";//self.userEmail;//[app getfullNameForUser:self.userEmail];
    NSString *url = [NSString stringWithFormat:@"https://meet.jit.si/%@",fullName];
    jitsiMeetView.delegate = self;
    jitsiMeetView.welcomePageEnabled = true;
    [jitsiMeetView loadURLObject:@{
                                   @"config": @{
                                           @"startWithAudioMuted": @"NO",
                                           @"startWithVideoMuted": @"NO"
                                           },
                                   @"url":url
                                   }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
