(ns clojure.member
	(:gen-class))

(defn member 
	[atm lizt] 
	( if ( = lizt () )
		( print false )
		( if ( = atm ( first lizt ) )
			( print true )
			( member atm ( rest lizt ) )
		)
	)
)

(member 7 '( 3 4 5 ) )
