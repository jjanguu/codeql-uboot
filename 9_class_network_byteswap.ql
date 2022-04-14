import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {

    exists(MacroInvocation mc_call 
        | mc_call.getMacro().getName() in ["ntohs", "ntohl", "ntohll"]
        | this = mc_call.getExpr()
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"