using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class CameraRotate : MonoBehaviour
{
	[SerializeField] Transform _target = null;
	[SerializeField] float _rad = 1.0f;
	[SerializeField] float _height = 1.0f;
	[SerializeField] float _speed = 1.0f;
	[SerializeField] Vector3 _offset = Vector3.zero;

	void Start()
    {
    }

    void Update()
    {
		transform.position = new Vector3(
			Mathf.Sin(Time.time * _speed) * _rad,
			_target.position.y + _height,
			Mathf.Cos(Time.time * _speed) * _rad);
		transform.LookAt(_target.position + _offset);
	}
}
