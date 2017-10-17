component {
	private function index( event, rc, prc, args={} ) {
		// TODO: create your handler logic here
		return renderView(
			  view          = 'page-types/responsive/index'
			, presideObject = 'responsive'
			, id            = event.getCurrentPageId()
			, args          = args
		);
	}
}
