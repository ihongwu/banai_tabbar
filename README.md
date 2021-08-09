# banai_tabbar
This plug-in is designed to solve the problem of jitter in enlarging and reducing the tabbar font of flutter.

1、The fontSize property of labelStyle cannot be set  
2、The fontSize property of unselectedLabelStyle must be set  
3、The fontSize property of unselectedLabelStyle must be greater than 0  
4、labelFontSize replaces the fontSize property of labelStyle

## Preview
<video id="video" controls="controls" preload="auto">
  <source id="mp4" src="https://user-images.githubusercontent.com/21274377/128660549-64f90736-beb6-4ab4-b45e-fd4245765c79.mp4" type="video/mp4">
</video> 

## Getting Started
Add dependency
```
dependencies:
  banai_tabbar: ^last version
```

## Super simple to use
```
BanaiTabbar(
	controller: _tabConroller,
	isScrollable: true,
	indicator: const BoxDecoration(),
	unselectedLabelColor:Colors.black38,
	labelColor:Colors.black,
	unselectedLabelStyle: TextStyle(
		fontSize: 16,
	),
	labelFontSize: 20,
	tabs: [
		for (var i = 0; i < tablist.length; i++) 
			Text(tablist[i])
	],
),
```

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

