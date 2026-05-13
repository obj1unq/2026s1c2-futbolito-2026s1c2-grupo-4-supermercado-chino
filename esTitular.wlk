object titular {
    method esTitular() = true
    method image() {
        return "lionel-titular.png"
    }
    method siguiente() = suplente
}
object suplente {
    method esTitular() = false
    method image() {
        return "lionel-suplente.png"
    }
    method siguiente() = titular 
}