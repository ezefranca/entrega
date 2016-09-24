//
//  ListViewModel.m
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewModel.h"

@implementation ListViewModel

-(instancetype)initWithModel:(Avfm *)model {
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
    self.awayId = _model.awayId;
    self.featured = _model.featured;
    self.home = _model.home;
    self.homeId = _model.homeId;
    self.image = _model.image;
    self.index = _model.index;
    self.leagueId = _model.leagueId;
    self.member = _model.member;
    self.memberName = _model.memberName;
    self.note = _model.note;
    self.photoType = _model.photoType;
    self.rating = _model.rating;
    self.row = _model.row;
    self.seat = _model.seat;
    self.section = _model.section;
    self.timestamp = _model.timestamp;
    self.venue = _model.venue;
    self.venueId = _model.venueId;
    self.video = _model.video;
    self.views = _model.views;
}

@end
