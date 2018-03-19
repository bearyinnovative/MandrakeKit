//
//  ViewController.m
//  MandrakeKitDemo-OC
//
//  Created by Kelvin on 12/03/2018.
//  Copyright © 2018 Beary Innovative. All rights reserved.
//

#import "ViewController.h"
#import "MandrakeKit/MandrakeKit-Swift.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //Group: =bwNQT
    //p2p: =ccZKs3pUt
    [MDKConfig showConversationWithCid:@"=bwNQT"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
