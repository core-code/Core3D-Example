//
//  Core3D_ExampleTests.m
//  Core3D-ExampleTests
//
//  Created by CoreCode on 10.03.11.
//  Copyright 2007 - 2012 CoreCode. Licensed under the MIT License.
//

#import "Core3D_ExampleTests.h"
#import "Core3D.h"

@implementation Core3D_ExampleTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAggregatePosition
{
	SceneNode *s = [[[SceneNode alloc] init] autorelease];

	[s setPosition:vector3f(5, 0, 0)];
	
	
	SceneNode *t = [[[SceneNode alloc] init] autorelease];

	[t setPosition:vector3f(0, 0, 5)];
	[t setRelativeModeTarget:s];
	

	vector3f dev = vector3f(5, 0, 5) - [t aggregatePosition];
    STAssertTrue(dev.length() < 0.01, @"bla");

	
	
	[s setRotation:vector3f(0, 90, 0)];

	dev = vector3f(10, 0, 0) - [t aggregatePosition];
	
	
    STAssertTrue(dev.length() < 0.01, @"bla");
	
	[s setRotation:vector3f(0, -90, 0)];
	
	dev = vector3f(0, 0, 0) - [t aggregatePosition];
	
	
    STAssertTrue(dev.length() < 0.01, @"bla");
}

- (void)testLookAt
{
	SceneNode *s = [[[SceneNode alloc] init] autorelease];
	
	[s setPosition:vector3f(5, 0, 0)];
	
	vector3f dev = vector3f(0, 0, -1) - [s getLookAt];

	STAssertTrue(dev.length() < 0.01, @"bla");
	
	[s setRotation:vector3f(90, 0, 0)];

	dev = vector3f(0, 1, 0) - [s getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");

	[s setRotation:vector3f(0, 90, 0)];
	
	dev = vector3f(-1, 0, 0) - [s getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	
	SceneNode *t = [[[SceneNode alloc] init] autorelease];
	
	[t setPosition:vector3f(5, 0, 0)];
	[t setRotation:vector3f(0, 0, 0)];
	[t setRelativeModeTarget:s];
	
	
	dev = vector3f(-1, 0, 0) - [t getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	[t setRotation:vector3f(0, 90, 0)];
	dev = vector3f(0, 0, 1) - [t getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	
	[s setRotation:vector3f(90, 90, 90)];
	dev = vector3f(0, 1, 0) - [s getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");

	[t setRotation:vector3f(90, 180, 270)];
	dev = vector3f(0, 0, 1) - [t getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	
	[s setAxisConfiguration:kXYZRotation];
	dev = vector3f(-1, 0, 0) - [s getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");

	
	[t setAxisConfiguration:kXYZRotation];
	dev = vector3f(0, 0, -1) - [t getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
}

- (void)testSetRotationFromLookAt
{
	SceneNode *s = [[[SceneNode alloc] init] autorelease];
	[s setPosition:vector3f(-5, 0, -5)];

	SceneNode *c = [[[SceneNode alloc] init] autorelease];
	[c setPosition:vector3f(5, 0, 5)];
	
	[c setRotationFromLookAt:[s position]];
	
	vector3f dev = vector3f(-0.707, 0, -0.707) - [c getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	
	
	[s setPosition:vector3f(-5, 10, -5)];
	[c setRotationFromLookAt:[s position]];
	dev = vector3f(-0.57735, 0.57735, -0.57735) - [c getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	
	
	SceneNode *s1 = [[[SceneNode alloc] init] autorelease];
	[s1 setPosition:vector3f(10, 0, -5)];
	[s setPosition:vector3f(-5, 0, -5)];
	[c setPosition:vector3f(-5, 0, 10)];
	[c setRotationFromLookAt:[s position]];
	dev = vector3f(0, 0, -1) - [c getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
	
	
	[c setRelativeModeTarget:s1];
	[c setRotationFromLookAt:[s position]];
	dev = vector3f(-0.707, 0, -0.707) - [c getLookAt];
	STAssertTrue(dev.length() < 0.01, @"bla");
}	

@end
