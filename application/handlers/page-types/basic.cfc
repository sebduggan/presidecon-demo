component {
	private function index( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView(
			  view          = 'page-types/basic/index'
			, presideObject = 'basic'
			, id            = event.getCurrentPageId()
			, args          = args
		);
	}
}
