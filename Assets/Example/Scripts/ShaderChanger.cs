using UnityEngine;

public class ShaderChanger : MonoBehaviour
{
	[SerializeField] Material _mat = null;
	[SerializeField] Shader[] _shaders = null;
	int _idx = 0;

	void Update()
	{
		if(Input.GetKeyDown(KeyCode.Space))
		{
			_idx = (_idx + 1) % _shaders.Length;
			_mat.shader = _shaders[_idx];
		}
	}
}
