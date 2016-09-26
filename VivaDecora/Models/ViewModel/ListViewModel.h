//
//  ListViewModel.h
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListAvfm.h"

#define BASE_IMAGE_URL @"http://aviewfrommyseat.com/wallpaper/"

@interface ListViewModel : NSObject

@property (strong, nonatomic) ListAvfm *model;
-(instancetype)initWithModel:(ListAvfm*)model;

@property (nonatomic, strong) NSString * avatar;
@property (nonatomic, strong) NSString * away;
@property (nonatomic, strong) NSString * awayId;
@property (nonatomic, strong) NSString * featured;
@property (nonatomic, strong) NSString * home;
@property (nonatomic, strong) NSString * homeId;
@property (nonatomic, strong) NSString * image;
@property (nonatomic, strong) NSString * index;
@property (nonatomic, strong) NSString * leagueId;
@property (nonatomic, strong) NSString * member;
@property (nonatomic, strong) NSString * memberName;
@property (nonatomic, strong) NSString * note;
@property (nonatomic, strong) NSString * photoType;
@property (nonatomic, strong) NSString * rating;
@property (nonatomic, strong) NSString * row;
@property (nonatomic, strong) NSString * seat;
@property (nonatomic, strong) NSString * section;
@property (nonatomic, strong) NSString * timestamp;
@property (nonatomic, strong) NSString * venue;
@property (nonatomic, strong) NSString * venueId;
@property (nonatomic, strong) NSString * video;
@property (nonatomic, strong) NSString * views;

@end
