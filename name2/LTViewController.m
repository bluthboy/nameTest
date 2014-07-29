//
//  LTViewController.m
//  name2
//
//  Created by Johnny Sparks on 7/28/14.
//  Copyright (c) 2014 therealreal. All rights reserved.
//

#import "LTViewController.h"

@interface LTViewController () <UITableViewDelegate>

@property(nonatomic, strong) UITableView *tableView;
@end

@implementation LTViewController


- (void)viewDidLoad{
    [super viewDidLoad];

    self.title = @"iOS team";

    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self.view addSubview:self.tableView];

    self.names = @[@"kenan", @"johnny"];

}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableCell"];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableCell"];
    }

    cell.textLabel.text = self.names[(NSUInteger) indexPath.row];

    return cell;
}

@end
