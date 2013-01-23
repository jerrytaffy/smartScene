//
//  ViewController.m
//  SmartScene
//
//  Created by Chan Jerry on 13-1-22.
//  Copyright (c) 2013年 Chan Jerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIPinchGestureRecognizer *pinchRecognizer = [[UIPinchGestureRecognizer alloc]                                    
                                                 initWithTarget:self action:@selector(scale:)];
    [pinchRecognizer setDelegate:self];
    [self.view addGestureRecognizer:pinchRecognizer];
    [pinchRecognizer release];
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [contentView setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [contentView release];
    [ipAddressView release];
    [portView release];
    [super dealloc];
}

- (IBAction) connectAction:(id)sender{
    NSString *url = [NSString stringWithFormat:@"http://%@:%@",ipAddressView.text,portView.text];
    [contentView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    [contentView setHidden:NO];
    [ipAddressView resignFirstResponder];
    [portView resignFirstResponder];
}

- (void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [contentView setHidden:YES];
}

-(void) scale:(UIPinchGestureRecognizer*)sender {
    float nowScale = [sender scale];
    NSLog(@"nowScale:%f",nowScale);
    if (contentView.isHidden == NO) {
        contentView.alpha = nowScale;
        if (nowScale < 0.5f) {
            [contentView setHidden:YES];
            contentView.alpha = 1.f;
        }
    }
}

@end
