//
//  Person.m
//  objective_resource
//
//  Created by James Burka on 1/26/09.
//  Copyright 2009 Burkaprojects. All rights reserved.
//

#import "Person.h"
#import "Dog.h"
#import "TTResource.h"

@implementation Person 
@synthesize createdAt , updatedAt , name , personId;


// handle pluralization 
+ (NSString *)getRemoteCollectionName {
	return @"people";
}


// this will go to the url http://localhost:3000/people/<id>/dogs
// and return the array of dogs
-(TTURLRequest *) findAllDogs {
	return [Dog findRemote:[NSString stringWithFormat:@"%@/%@",personId,@"dogs",nil]];
}

- (void) dealloc
{
  [createdAt release];
  [updatedAt release];
	[name release];
	[personId release];
	[super dealloc];
}

#pragma mark -
#pragma mark TTResourceDelegate



@end
