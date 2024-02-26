package canvas.exceptions

class UnknownTypeItemException(id: String, unresolvedType: String):
    RuntimeException("Can't resolve type: $unresolvedType, for id: $id")