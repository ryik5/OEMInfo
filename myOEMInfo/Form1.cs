using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace myOEMInfo
{
    public partial class Form1 :Form
    {
        private Bitmap bmp;
        private Bitmap Logo;
        private string SupportURL;
        private string SupportPhone;
        private string Model;
        private string Manufacturer;

        private string sBaseRegisterLocal = @"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMinformation";
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            bmp = new Bitmap(Properties.Resources.LogoRYIK);
        }
        private void SetRegistrySavedData()
        {
            using (Microsoft.Win32.RegistryKey EvUserKey = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(sBaseRegisterLocal))
            {
                EvUserKey.SetValue("SupportURL", SupportURL, Microsoft.Win32.RegistryValueKind.String);
                EvUserKey.SetValue("SupportPhone", SupportPhone, Microsoft.Win32.RegistryValueKind.String);
                EvUserKey.SetValue("Model", Model, Microsoft.Win32.RegistryValueKind.String);
                EvUserKey.SetValue("Manufacturer", Manufacturer, Microsoft.Win32.RegistryValueKind.String);
                EvUserKey.SetValue("Logo", Logo, Microsoft.Win32.RegistryValueKind.String);
            }
        }

        private void CheckRegistrySavedData()
        {
            try
            {
                using (Microsoft.Win32.RegistryKey EvUserKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(sBaseRegisterLocal, Microsoft.Win32.RegistryKeyPermissionCheck.ReadSubTree, System.Security.AccessControl.RegistryRights.ReadKey))
                {
                    SupportURL = EvUserKey.GetValue("SupportURL").ToString();
                    SupportPhone = EvUserKey.GetValue("SupportPhone").ToString();
                    Model = EvUserKey.GetValue("Model").ToString();
                    Manufacturer = EvUserKey.GetValue("Manufacturer").ToString();
                    Logo = EvUserKey.GetValue("Logo").ToString();
                }
            } catch { }
        }

    }
}
