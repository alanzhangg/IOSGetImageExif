//
//  ViewController.m
//  IOSEXIFDEMO
//
//  Created by jinxin on 01/09/2017.
//  Copyright © 2017 jinxin. All rights reserved.
//

#import <ImageIO/ImageIO.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSURL * url = [[NSBundle mainBundle] URLForResource:@"IMG_0231" withExtension:@"JPG"];
		
	CGImageSourceRef imageSource = CGImageSourceCreateWithURL((CFURLRef)url, NULL);
	CFDictionaryRef imageInfo = CGImageSourceCopyPropertiesAtIndex(imageSource, 0, NULL);
	NSDictionary *exifDic = (__bridge NSDictionary *)CFDictionaryGetValue(imageInfo, kCGImagePropertyExifDictionary) ;
	NSLog(@"All Exif Info:%@",imageInfo);
	NSLog(@"EXIF:%@",exifDic);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
