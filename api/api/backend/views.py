from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view(['GET'])
def hello_world(request):
    name = "Anonymous" if request.user.is_anonymous else request.user.first_name
    return Response({"hello": f"Welcome to DRF, {name}!"}, 200)
