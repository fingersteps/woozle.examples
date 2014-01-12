using System.Collections.Generic;
using ServiceStack.ServiceHost;

namespace Woozle.Demo.Services
{
    [Route("/products", "GET, OPTIONS")]
    public class Products : IReturn<List<Product>>
    {
    }
}
