%populate {
    object WiFi {
        object EndPoint {
{% for ( let Itf in BD.Interfaces ) : if ( BDfn.isInterfaceWirelessEp(Itf.Name) ) : %}
{% if (BDfn.isInterfaceLan(Itf.Name)) : %}
            object '{{Itf.Alias}}' {
                parameter BridgeInterface = "{{BD.Bridges.Lan.Name}}";
            }
{% endif %}
{% endif; endfor; %}
        }
    }
}
