//
//  LTViewController.h
//  name2
//
//  Created by Johnny Sparks on 7/28/14.
//  Copyright (c) 2014 therealreal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTViewController : UIViewController <UITableViewDataSource>

@property(nonatomic, strong) NSArray *names;
@end
