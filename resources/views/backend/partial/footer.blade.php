<footer class="main-footer">
    <div class="pull-right">
        <!-- Don't remove below text. It's violate the license. -->
        <font color=\"white\" size=\"1\">
        <strong>CloudSchool v{{$majorVersion}}.{{$minorVersion}}.{{$patchVersion}}-{{$suffixVersion}}</strong><span style="display: none;">{{substr($idc,0,7)}}</span> || Developed by <a class="cplink" href="#">{{$maintainer}}</a>
        </font>
    </div>
    <strong>Copyright &copy; {{date('Y')}} <a href="#">@if(isset($appSettings['institute_settings']['name'])){{$appSettings['institute_settings']['name']}}@else CloudSchool @endif</a>.</strong> All rights
    reserved.
</footer>