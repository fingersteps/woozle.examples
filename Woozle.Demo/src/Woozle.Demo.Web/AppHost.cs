using ServiceStack.WebHost.Endpoints;
using Woozle.Demo.Persistence;
using Woozle.Demo.Services;
using Woozle.Host;
using Woozle.Persistence.Ef.Dependencies;

namespace Woozle.Demo.Web
{
    public class AppHost : WoozleHost
    {
        public AppHost()
            : base("Woozle Demo Application", typeof(WoozleHost).Assembly, typeof(ProductService).Assembly)
        {
        }

        public override void Configure(Funq.Container container)
        {
            base.Configure(container);
            MappingConfiguration.Configure();
            EndpointHostConfig.Instance.DefaultRedirectPath = "index.html";

            SetConfig(new EndpointHostConfig
            {
                ServiceStackHandlerFactoryPath = "api",
                MetadataRedirectPath = "api/metadata",
                GlobalResponseHeaders =
            {
                { "Access-Control-Allow-Origin", "*" },
                { "Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS" },
            },
            });
            Plugins.Add(new WoozleEntityFrameworkPlugin());
            Plugins.Add(new PersistenceDependencies());
        }
    }
}