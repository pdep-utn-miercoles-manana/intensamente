class Emocion {

	/** Punto 2 **/

	method asentarA(unRecuerdo) {}


	/** Punto 6 **/

	method niega(unRecuerdo) {
		return false
	}

	method esAlegre() {
		return false
	}
}

object alegria {

	/** Punto 2 **/

	method asentarA(unRecuerdo) {
		if (unRecuerdo.propietarioFeliz()) {
			unRecuerdo.centralizarse()
		}
	}


	/** Punto 6 **/

	method niega(unRecuerdo) {
		return unRecuerdo.esAlegre().negate()
	}

	method esAlegre() {
		return true
	}
}

object tristeza inherits Emocion {

	/** Punto 2 **/

	override method asentarA(unRecuerdo) {
		unRecuerdo.centralizarse()
		unRecuerdo.disminuirFelicidadPorcentual(10)
	}


	/** Punto 6 **/

	override method niega(unRecuerdo) {
		return unRecuerdo.esAlegre()
	}
}

object furia inherits Emocion {}
object temor inherits Emocion {}
object disgusto inherits Emocion {}
