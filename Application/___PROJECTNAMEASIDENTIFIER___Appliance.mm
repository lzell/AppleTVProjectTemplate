//
//  ___PROJECTNAMEASIDENTIFIER___AppDelegate.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___PROJECTNAMEASIDENTIFIER___Appliance.h"
#import "ApplianceConfig.h"
#import "TopShelfController.h"

@implementation ___PROJECTNAMEASIDENTIFIER___Appliance

@synthesize topShelfController = _topShelfController;

+ (NSArray*) applianceCategories {
	
	NSMutableArray* categoryList = [[NSMutableArray alloc] initWithCapacity:1];
	
	[categoryList addObject:[BRApplianceCategory categoryWithName:FIRST_CATEGORY_NAME
                                                     identifier:FIRST_CATEGORY_ID
                                                 preferredOrder:FIRST_CATEGORY_PREFERRED_ORDER]];
	
	return [NSArray arrayWithArray:[categoryList autorelease]];
}


+ (void) initialize {
	;
}

- (id)init {
  self = [super init];
  if (self) {
		_topShelfController		= [[TopShelfController alloc] init];
		_applianceCategories	= [[___PROJECTNAMEASIDENTIFIER___Appliance applianceCategories] retain];
  }
  
  return self;
}

- (void) dealloc {
	[_applianceCategories release];
	[_topShelfController release];
	[super dealloc];
}

- (id) applianceCategories {
	return _applianceCategories;
}

- (id) identifierForContentAlias:(id)contentAlias {
	return APPLIANCE_MODULE_NAME;
}

- (id) selectCategoryWithIdentifier:(id)ident {
	NSLog(@"[DEBUG] %s (%d): ident = %@", __PRETTY_FUNCTION__, __LINE__, [ident description]);
	return nil;
}

- (BOOL) handleObjectSelection:(id)fp8 userInfo:(id)fp12 {
	NSLog(@"[ENTRY] %s (%d)", __PRETTY_FUNCTION__, __LINE__);
	return YES;
}

- (id) applianceSpecificControllerForIdentifier:(id)arg1 args:(id)arg2 {
	//NSLog(@"applianceSpecificControllerForIdentifier: %@ args: %@", arg1, arg2);
	return nil;
}

- (id) controllerForIdentifier:(id)identifier args:(id)args
{
  
	id controller	= nil;
	
	if ([identifier isEqualToString:FIRST_CATEGORY_ID]) {
		controller 	= [BRAlertController alertOfType:0 
                                          titled:@"BRAlertController"
                                     primaryText:@"Hello World" 
                                   secondaryText:@"Goodbye World"];
	}
	else {
    NSLog(@"Unknown identifier in controllerForIdentifier:args:");
	}
	
	return controller;
}

- (id) localizedSearchTitle { 
	return APPLIANCE_LOCALIZED_NAME; 
}

- (id) applianceName { 
	return APPLIANCE_NAME; 
}

- (id) moduleName { 
	return APPLIANCE_MODULE_NAME; 
}

- (id) applianceKey { 
	return APPLIANCE_KEY; 
}

@end

