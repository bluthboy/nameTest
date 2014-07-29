//
// Created by Johnny Sparks on 7/28/14.
// Copyright (c) 2014 therealreal. All rights reserved.
//

#import "LTNameViewController.h"


@interface LTNameViewController ()
@property(nonatomic, strong) UILabel *label;
@end

@implementation LTNameViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.label = [[UILabel alloc] initWithFrame:self.view.frame];
    self.label.textColor = [UIColor purpleColor];
    self.label.font = [UIFont systemFontOfSize:40.0f];

    if(self.name){
        self.label.text = self.name;
    }
    [self.view addSubview:self.label];
}

- (void)setName:(NSString *)name {
    _name = name;
    if(self.label){
        self.label.text = name;
    }
}


@end