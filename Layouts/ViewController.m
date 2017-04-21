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

- (IBAction)touchButton:(id)sender;
- (IBAction)tapshow2:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mytableview.delegate = self;
    self.mytableview.dataSource = self;
    self.mytableview.estimatedRowHeight = 100;
    self.mytableview.rowHeight = UITableViewAutomaticDimension;
    self.expandState = YES;
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
        
    }
    
    
//     NSArray *constraints = [cell.contentView viewWithTag:199].constraints;
    
//    
//    for (NSLayoutConstraint *s in constraints) {
//        if ([s.identifier isEqualToString:middleH]) {
//
//            self.heightConstraint = s;
//            continue;
//        }
//    }
//    
//    NSArray *constraintsA = [cell.contentView viewWithTag:200].constraints;
//    for (NSLayoutConstraint *s in constraintsA) {
//        if ([s.identifier isEqualToString:oneline]) {
//            self.onelineHeightConstraint = s;
//            continue;
//        }
//    }
//    
    
    
//    if (self.heightConstraint) {
//        if (self.expandState) {
//            self.heightConstraint.active = NO;
//            self.onelineHeightConstraint.active = NO;
//        }
//        else{
//            self.heightConstraint.active = YES;
//            self.onelineHeightConstraint.active = YES;
//        }
//    }

    
    
    NSLog(@"te");
    
    /*
    MyTableViewCell *ce = cell;
    
    if (self.expandState) {
        ce.aa.active = NO;
    }
    else{
        ce.aa.active = YES;
    }
    */
    
    
    
    return cell;
}



- (IBAction)touchButton:(id)sender {
    self.expandState = !self.expandState;
    [self.mytableview reloadData];
}

- (IBAction)tapshow2:(id)sender {
}

@end
