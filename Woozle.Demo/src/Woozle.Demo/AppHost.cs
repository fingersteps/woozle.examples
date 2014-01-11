using ServiceStack.WebHost.Endpoints;
using Woozle.Host;
using Woozle.Persistence.Ef.Dependencies;

namespace Woozle.Demo
{
    public class AppHost : WoozleHost
    {
        public AppHost()
            : base("Woozle Demo Application", typeof(WoozleHost).Assembly)
        {
        }

        public override void Configure(Funq.Container container)
        {
            base.Configure(container);
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
        }
    }
}