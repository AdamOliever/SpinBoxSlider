//
//  SpinBoxSlider.m
//  SpinBoxSlider
//
//  Created by adam on 2018-09-10.
//  Copyright © 2018 adam. All rights reserved.
//

#import "SpinBoxSlider.h"

const double SpinboxWidth = 50;

@implementation SpinBoxSlider

@end

@interface SpinBoxSliderCell()


@end

@implementation SpinBoxSliderCell

@end

//Draw Method
@implementation SpinBoxSliderCell(Draw)
- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
{
    
}

//Slider Value Area
- (NSRect)sliderValueArea:(NSRect)cellFrame
{
    double minValue = [self minValue];
    double maxValue = [self maxValue];
    double offset   = maxValue - minValue;
    
    double valueProportion = [self doubleValue] / offset;
    
    //Calculate the slider value area
    double sliderValueWidth = valueProportion * cellFrame.size.width;
    
    NSRect sliderValueRect = NSMakeRect(cellFrame.origin.x, cellFrame.origin.y, sliderValueWidth, cellFrame.size.height);
    
    return sliderValueRect;
}


@end
