%populate {
    object WiFi {
        object AccessPoint {
{% for ( let Itf in BD.Interfaces ) : if ( BDfn.isInterfaceWirelessAp(Itf.Name) ) : %}
            object '{{Itf.Alias}}' {
                object RssiEventing {
                    parameter AveragingFactor = 1000;
{% if (BDfn.isInterfaceLan(Itf.Name)) : %}
                    parameter Enable = 1;
{% endif %}
                    parameter Interval = 1000;
                    parameter RssiInterval = 1;
                }
            }
{% endif; endfor; %}
        }
    }
}
