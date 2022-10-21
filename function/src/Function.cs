using System.Text.Json;
using Amazon.Lambda.APIGatewayEvents;
using Amazon.Lambda.Core;

[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace ExemploDotnet;

public class Function
{
    
   public async Task<APIGatewayProxyResponse> FunctionHandler(APIGatewayHttpApiV2ProxyRequest apigProxyEvent,
            ILambdaContext context)
        {
           
           return new APIGatewayProxyResponse
                {
                    Body = "Hello World",
                    StatusCode = 200,
                    Headers = new Dictionary<string, string> { { "Content-Type", "application/json" } }
                };


        }


}
