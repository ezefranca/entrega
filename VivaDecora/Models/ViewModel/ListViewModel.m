//
//  ListViewModel.m
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewModel.h"

@implementation ListViewModel

-(instancetype)initWithModel:(ListAvfm *)model {
    self = [super init];
    self.model = model;
    if (self) {
        [self setValues];
    }
    return self;
}

-(void)setValues{
    self.image = _model.image;
    self.avatar = _model.avatar;
    self.away = _model.away;
    self.awayId = _model.away_id;
    self.featured = _model.featured;
    self.home = _model.home;
    self.homeId = _model.home_id;
    self.image = [NSString stringWithFormat:@"%@%@", BASE_IMAGE_URL, _model.image];
    self.index = _model.index;
    self.leagueId = _model.league_id;
    self.member = _model.member;
    self.memberName = _model.member_name;
    self.note = _model.note;
    self.photoType = _model.photo_type;
    self.rating = _model.rating;
    self.row = _model.row;
    self.seat = _model.seat;
    self.section = _model.section;
    self.timestamp = _model.timestamp;
    self.venue = _model.venue;
    self.venueId = _model.venue_id;
    self.video = _model.video;
    self.views = _model.views;
}

@end
