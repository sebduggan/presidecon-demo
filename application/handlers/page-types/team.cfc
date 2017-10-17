component {

	property name="dao" inject="presidecms:object:person";

	private function index( event, rc, prc, args={} ) {
		args.team = dao.selectData();

		return renderView(
			  view          = 'page-types/team/index'
			, presideObject = 'team'
			, id            = event.getCurrentPageId()
			, args          = args
		);
	}
}
