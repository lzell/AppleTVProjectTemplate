//
//  ___PROJECTNAMEASIDENTIFIER___Appliance.h
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "BackRowExtras.h"
#import "BackRow.h"


@class TopShelfController;

@interface ___PROJECTNAMEASIDENTIFIER___Appliance : BRBaseAppliance
{
  TopShelfController *_topShelfController;
	NSArray *_applianceCategories;
}

@property(nonatomic, readonly, retain) id topShelfController;

+ (NSArray*) applianceCategories;

@end
