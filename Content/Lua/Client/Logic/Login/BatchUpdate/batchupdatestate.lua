local CBatchUpdateState = class("CBatchUpdateState", CFSMState)

function CBatchUpdateState:ctor( stateid )
	CFSMState.ctor( self, stateid )
end


return CBatchUpdateState