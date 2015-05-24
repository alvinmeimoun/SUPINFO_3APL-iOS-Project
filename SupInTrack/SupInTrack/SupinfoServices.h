//
//  SupinfoServices.h
//  SupInTrack
//
//  Created by Alvin Meimoun on 22/05/2015.
//  Copyright (c) 2015 SUPINFO. All rights reserved.
//

#ifndef SupInTrack_SupinfoServices_h
#define SupInTrack_SupinfoServices_h

#import <Foundation/Foundation.h>
#import "Libs/GDataXMLNode.h"
#import "Models/CampusModel.h"

static NSString* REGEX_CAMPUS_LIST = @"<P id=\"campus-.+<BR>";
static NSString* REGEX_CAMPUS_LIST_URL = @"<IMG src=\"(.*)\"/>";
static NSString* REGEX_EXTRACT_HREF = @"<a\\s+(?:[^>]*?\\s+)?href=\"([^\"]*)\"";

@interface SupinfoServices : NSObject

+(NSArray*) getCampusesFromSupinfoWebsite:(NSError*) error;

@end

#endif
