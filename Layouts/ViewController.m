//
//  ViewController.m
//  Layouts
//
//  Created by chester on 2017/4/19.
//  Copyright © 2017年 chester. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"
#import "TwoTableViewCell.h"


#define middleH @"middleH"
#define oneline @"oneline"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mytableview;
@property (nonatomic) NSLayoutConstraint *heightConstraint;
@property (nonatomic) NSLayoutConstraint *onelineHeightConstraint;

@property (assign, nonatomic) BOOL expandState;

@property (assign, nonatomic) BOOL show2nd;

- (IBAction)expandAll:(id)sender;
- (IBAction)tapshowPart2:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mytableview.delegate = self;
    self.mytableview.dataSource = self;
    self.mytableview.estimatedRowHeight = 100;
    self.mytableview.rowHeight = UITableViewAutomaticDimension;
    self.expandState = YES;
    self.show2nd = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SedCellID"];
    if ([cell isKindOfClass:[TwoTableViewCell class]]) {
        TwoTableViewCell *tCell = (TwoTableViewCell *)cell;
        [tCell updateExpState:self.expandState];
        [tCell show2nd:self.show2nd];
    }
    return cell;
}

- (IBAction)expandAll:(id)sender {
    self.expandState = !self.expandState;
    [self.mytableview reloadData];
}

- (IBAction)tapshowPart2:(id)sender {
    self.show2nd = !self.show2nd;
    [self.mytableview reloadData];
}

@end
