using ServiceStack.WebHost.Endpoints;
using Woozle.Demo.Model;
using Woozle.Persistence;

namespace Woozle.Demo.Persistence
{
    public class PersistenceDependencies : IPlugin
    {
        public void Register(IAppHost container)
        {
            container.RegisterAs<EfWoozleDemoEntity, IWoozleDemoUnitOfWork>();
            container.RegisterAs<ProductRepository, IRepository<Product>>();
        }
    }
}
