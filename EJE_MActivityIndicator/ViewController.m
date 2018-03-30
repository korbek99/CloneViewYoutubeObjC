//
//  ViewController.m
//  EJE_MActivityIndicator
//
//  Created by Jose David Bustos H on 22-01-17.
//  Copyright © 2017 Jose David Bustos H. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.youtube.com/watch?v=VsZqp7nP7hI"]]];
    
    [web addSubview:actividad];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0)  target:self selector:@selector(loading)userInfo:nil repeats:YES];
     
}
-(void)loading{

    if (!web.loading)
        [actividad stopAnimating];
    else
        [actividad startAnimating];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
