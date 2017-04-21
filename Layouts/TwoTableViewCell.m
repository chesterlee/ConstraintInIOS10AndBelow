//
//  TwoTableViewCell.m
//  Layouts
//
//  Created by chester on 2017/4/21.
//  Copyright © 2017年 chester. All rights reserved.
//

#import "TwoTableViewCell.h"

@interface TwoTableViewCell ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *twoTopToOneConstraint;

@end


@implementation TwoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)updateExpState:(BOOL)expState{
    if (expState) {
        _oneContainerViewHeightConstraint.priority  = MakeHeightConstraintNoEffectPriority;
        _twoContainerViewHeightConstraint.priority  = MakeHeightConstraintNoEffectPriority;
        _threeLabelHeightConstraint.priority        = MakeHeightConstraintNoEffectPriority;
        _thirdLabelHeightConstraint.priority        = MakeHeightConstraintNoEffectPriority;
        _fifthLabelHeightConstraint.priority        = MakeHeightConstraintNoEffectPriority;
    }
    else
    {
        _oneContainerViewHeightConstraint.priority  = MakeHeightConstraintEffectPriority;
        _twoContainerViewHeightConstraint.priority  = MakeHeightConstraintEffectPriority;
        _threeLabelHeightConstraint.priority        = MakeHeightConstraintEffectPriority;
        _thirdLabelHeightConstraint.priority        = MakeHeightConstraintEffectPriority;
        _fifthLabelHeightConstraint.priority        = MakeHeightConstraintEffectPriority;
    }
}

-(void)show2nd:(BOOL)beShow2nd{
    
    if (beShow2nd)
    {
        self.twoContainerViewHeightConstraint.constant = 10.0f;
        self.twoTopToOneConstraint.constant = 16.0f;
    }
    else
    {
        self.twoContainerViewHeightConstraint.constant = 0;
        self.twoTopToOneConstraint.constant = 0;
    }
}



@end
