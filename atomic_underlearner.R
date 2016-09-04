atom.prob = runif(1,0,1)
adapt.counter = 0
#edit
react = function(incidence){
print(incidence)
print("has incided")
atom.state = sample(c(0,1), size=1, prob=c(1-atom.prob, atom.prob))
print(atom.state)
print("is the state")

if(incidence){
	if(atom.state) { 
		print("it fits!")
		adapt.counter <<- adapt.counter + 1
			   }
	else {
		print("ouch")
		adapt.counter <<- adapt.counter - 1
		atom.prob <<- atom.prob + (1- atom.prob)/2
		print(atom.prob)
		}
		}
else {
	if(!atom.state) {
				print("it fits!")
				adapt.counter <<- adapt.counter + 1
				}
	else {
		print("ouch")
		adapt.counter <<- adapt.counter - 1
		atom.prob <<- atom.prob - (atom.prob)/2
				print(atom.prob)
		}

	}
}




######ls()
ls()
