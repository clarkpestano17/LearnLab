using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LearnLab.Startup))]
namespace LearnLab
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
