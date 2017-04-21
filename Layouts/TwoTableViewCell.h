//
//  TwoTableViewCell.h
//  Layouts
//
//  Created by chester on 2017/4/21.
//  Copyright © 2017年 chester. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MakeHeightConstraintEffectPriority   751
#define MakeHeightConstraintNoEffectPriority 250

@interface TwoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet TwoTableViewCell *oneContainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *oneContainerViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *twoContainerViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *threeLabelHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *thirdLabelHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *fifthLabelHeightConstraint;


-(void)updateExpState:(BOOL)state;

-(void)show2nd:(BOOL)beShow2nd;

@end
