Class {
	#name : #BrowserStackPresentation,
	#superclass : #GtSlideShowStencil,
	#category : #BrowserStackPresentation
}

{ #category : #'api - instantiation' }
BrowserStackPresentation >> create [
	| show |
	show := GtSlideShow new.
	show
		addSlide: (GtFilePictureSlide new
				fileReference:
					(GtResourceReference
						path: Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png'));
		addSlide:
			(GtTextAndElementSlide new
				newTextWithFormat: (self heading: 'Pure and elegent Object Oriented language');
				newTextWithFormat: (self heading: 'Full written in itself');
				newTextWithFormat: (self heading: 'Empowering');
				element: [ GtPlaygroundSlide new
						snippets: {'3 + 4' . '''Hello world'''};
						asElement ]);
		addSlide:
			(GtTextAndElementSlide new
				newTextWithFormat: (self heading: 'The full syntax on a postcard');
				element: [ self methodCoderForMethods: {(Object >> #exampleWihtNumber:)} ]);
		addSlide:
			(GtFilePictureSlide new
				fileReference:
					(GtResourceReference
						path: Path * 'feenkcom' / 'gtoolkit' / 'doc' / 'gtoolkit.png'));
		makeArrowsVisible.
	^ show
]

{ #category : #examples }
BrowserStackPresentation >> exampleSlideShow [
	"Or better: GtSlideShowExamples new openInSpace"

	<gtExample>
	^ self  
]
