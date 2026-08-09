rg={
    rgs={
        name="fina_rg"
        location="Japan East"
    }
}

stg={
    stgs={
        storage_account_name="fstgs"
        location="Japan East"
        resource_group_name="fina_rg"
        account_tier="Standard"
        account_replication_type="LRS"
    }
}

vnet={
    vnets={
        virtual_network_name="finavnet"
        resource_group_name="fina_rg"
        location="Japan East"
        address_space=["10.0.0.0/16"]
    }
}

snet={
    snets={
        subnet_name="finasubnet"
        resource_group_name="fina_rg"
        virtual_network_name="finavnet"
        address_prefixes=["10.0.1.0/24"]
      
       }
}

pip={
    pips={
        name="fpip"
        resource_group_name="fina_rg"
        location="Japan East"
        allocation_method="Static"
    }
}

vms={
    vm={
        nic_name="finan_nic"
        location="Japan East"
        resource_group_name="fina_rg"
        virtual_network_name="finavnet"
        subnet_name="finasubnet"
        pip_name="fpip"
        vm_name="Ubuntu"
        size="Standard_D2s_v3"
        admin_username="VM01"
        admin_password="Vm@123"
    }
}
