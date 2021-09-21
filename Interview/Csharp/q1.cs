namespace ZFH.WinService
{
    public partial class ZFHService : ServiceBase
    {
        private readonly ZFHFileSystemWatcher _watcher;

        public ZFHService()
        {
            InitializeComponent();
            _watcher = new ZFHFileSystemWatcher();
        }
        
        protected override void OnStart(string[] args)
        {
            _watcher.Start();
        }

        protected override void OnStop()
        {
            _watcher.Stop();
        }

        public void StartService()
        {
            _watcher.Start();
        }
    }
}